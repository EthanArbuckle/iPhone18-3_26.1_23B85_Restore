@interface UIButtonFeedbackGenerator
@end

@implementation UIButtonFeedbackGenerator

void __63___UIButtonFeedbackGenerator_userInteractionStartedAtLocation___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5 = [v3 _buttonConfiguration];
    v4 = [v5 interactionStartedFeedback];
    [v3 _playFeedback:v4 atLocation:{*(a1 + 40), *(a1 + 48)}];
  }
}

@end