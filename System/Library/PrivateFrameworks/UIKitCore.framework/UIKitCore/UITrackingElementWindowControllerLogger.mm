@interface UITrackingElementWindowControllerLogger
@end

@implementation UITrackingElementWindowControllerLogger

void ___UITrackingElementWindowControllerLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "TrackingElementWindowController");
  v1 = _MergedGlobals_26;
  _MergedGlobals_26 = v0;
}

@end