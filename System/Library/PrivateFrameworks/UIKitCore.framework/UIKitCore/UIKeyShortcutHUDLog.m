@interface UIKeyShortcutHUDLog
@end

@implementation UIKeyShortcutHUDLog

void ___UIKeyShortcutHUDLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyShortcutHUD");
  v1 = qword_1ED49F020;
  qword_1ED49F020 = v0;
}

@end