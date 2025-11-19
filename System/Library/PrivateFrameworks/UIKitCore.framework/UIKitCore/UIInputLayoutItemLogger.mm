@interface UIInputLayoutItemLogger
@end

@implementation UIInputLayoutItemLogger

void ___UIInputLayoutItemLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIInputLayoutItem");
  v1 = qword_1ED4990A0;
  qword_1ED4990A0 = v0;
}

@end