@interface UIKBInlineTextCompletionLog
@end

@implementation UIKBInlineTextCompletionLog

void ___UIKBInlineTextCompletionLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "InlineTextCompletion");
  v1 = _UIKBInlineTextCompletionLog_log;
  _UIKBInlineTextCompletionLog_log = v0;
}

@end