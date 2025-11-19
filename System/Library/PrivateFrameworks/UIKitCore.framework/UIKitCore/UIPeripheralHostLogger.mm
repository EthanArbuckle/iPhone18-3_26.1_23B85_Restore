@interface UIPeripheralHostLogger
@end

@implementation UIPeripheralHostLogger

void ___UIPeripheralHostLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIPeripheralHost");
  v1 = qword_1ED49F468;
  qword_1ED49F468 = v0;
}

@end