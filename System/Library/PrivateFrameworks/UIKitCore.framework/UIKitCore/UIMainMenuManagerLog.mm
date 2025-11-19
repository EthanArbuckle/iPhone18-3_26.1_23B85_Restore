@interface UIMainMenuManagerLog
@end

@implementation UIMainMenuManagerLog

void ___UIMainMenuManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "_UIMainMenuManager");
  v1 = qword_1ED4A2A80;
  qword_1ED4A2A80 = v0;
}

@end