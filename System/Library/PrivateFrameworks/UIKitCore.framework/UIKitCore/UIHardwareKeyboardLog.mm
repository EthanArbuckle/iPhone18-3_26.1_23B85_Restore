@interface UIHardwareKeyboardLog
@end

@implementation UIHardwareKeyboardLog

void ___UIHardwareKeyboardLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "HardwareKeyboard");
  v1 = qword_1ED49C4B0;
  qword_1ED49C4B0 = v0;
}

@end