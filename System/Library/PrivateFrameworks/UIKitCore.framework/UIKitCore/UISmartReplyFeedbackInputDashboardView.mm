@interface UISmartReplyFeedbackInputDashboardView
@end

@implementation UISmartReplyFeedbackInputDashboardView

void __81___UISmartReplyFeedbackInputDashboardView_makeButtonWithSystemImageNamed_action___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 isHighlighted];
  v3 = 1.0;
  if (v2)
  {
    v3 = 0.5;
  }

  [v4 setAlpha:v3];
}

@end