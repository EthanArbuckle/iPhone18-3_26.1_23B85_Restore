@interface UIDragFeedbackGenerator
@end

@implementation UIDragFeedbackGenerator

uint64_t __61___UIDragFeedbackGenerator_userInteractionStartedAtLocation___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _dragConfiguration];
    v5 = [v4 interactionStartedFeedback];
    [v3 _playFeedback:v5 atLocation:{*(a1 + 40), *(a1 + 48)}];

    [*(a1 + 32) _startPlayingContinuousFeedback];
  }

  v6 = *(a1 + 32);

  return [v6 deactivate];
}

@end