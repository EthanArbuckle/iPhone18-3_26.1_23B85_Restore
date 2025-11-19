@interface CatalystTextInputLog
@end

@implementation CatalystTextInputLog

void __CatalystTextInputLog_UIKit_block_invoke()
{
  v0 = os_log_create("com.apple.textinput.catalyst", "UIKit");
  v1 = CatalystTextInputLog_UIKit_log;
  CatalystTextInputLog_UIKit_log = v0;
}

@end