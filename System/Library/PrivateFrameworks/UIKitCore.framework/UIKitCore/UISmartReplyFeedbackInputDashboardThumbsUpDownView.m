@interface UISmartReplyFeedbackInputDashboardThumbsUpDownView
@end

@implementation UISmartReplyFeedbackInputDashboardThumbsUpDownView

void __59___UISmartReplyFeedbackInputDashboardThumbsUpDownView_init__block_invoke()
{
  v2 = +[UIKeyboardImpl activeInstance];
  v0 = [v2 keyboardStateManager];
  v1 = [v0 smartReplyFeedbackManager];
  [v1 reportSmartRepliesThumbsDown];
}

void __59___UISmartReplyFeedbackInputDashboardThumbsUpDownView_init__block_invoke_2()
{
  v2 = +[UIKeyboardImpl activeInstance];
  v0 = [v2 keyboardStateManager];
  v1 = [v0 smartReplyFeedbackManager];
  [v1 reportSmartRepliesThumbsUp];
}

@end