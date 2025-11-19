@interface UIModulationFeedbackGenerator
@end

@implementation UIModulationFeedbackGenerator

uint64_t __62___UIModulationFeedbackGenerator_activateWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) playingContinuousFeedback];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    v6 = [*(a1 + 32) _modulationConfiguration];
    v7 = [v6 feedback];
    v8 = [v7 copy];

    if (v8)
    {
      v9 = [*(a1 + 32) _modulationConfiguration];
      v10 = [v9 feedbackUpdateBlock];
      (v10)[2](v10, v8, *(*(a1 + 32) + 168));

      [*(a1 + 32) setPlayingContinuousFeedback:v8];
      [*(a1 + 32) _playFeedback:v8 atLocation:{1.79769313e308, 1.79769313e308}];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

@end