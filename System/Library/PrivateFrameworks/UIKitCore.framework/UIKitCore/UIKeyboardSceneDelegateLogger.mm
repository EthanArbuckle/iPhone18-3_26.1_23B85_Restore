@interface UIKeyboardSceneDelegateLogger
@end

@implementation UIKeyboardSceneDelegateLogger

void ___UIKeyboardSceneDelegateLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KeyboardSceneDelegate");
  v1 = qword_1ED49DCA0;
  qword_1ED49DCA0 = v0;
}

@end