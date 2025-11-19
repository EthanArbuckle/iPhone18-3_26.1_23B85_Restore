@interface UIInputWindowControllerLogger
@end

@implementation UIInputWindowControllerLogger

void ___UIInputWindowControllerLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "InputWindowController");
  v1 = qword_1ED49BF40;
  qword_1ED49BF40 = v0;
}

@end