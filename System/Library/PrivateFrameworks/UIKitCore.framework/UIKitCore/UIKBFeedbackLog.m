@interface UIKBFeedbackLog
@end

@implementation UIKBFeedbackLog

void ___UIKBFeedbackLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIKBFeedbackGenerator");
  v1 = qword_1ED49FDD0;
  qword_1ED49FDD0 = v0;
}

@end