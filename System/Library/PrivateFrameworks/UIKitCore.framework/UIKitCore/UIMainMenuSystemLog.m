@interface UIMainMenuSystemLog
@end

@implementation UIMainMenuSystemLog

void ___UIMainMenuSystemLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "MainMenuSystem");
  v1 = qword_1ED49A530;
  qword_1ED49A530 = v0;
}

@end