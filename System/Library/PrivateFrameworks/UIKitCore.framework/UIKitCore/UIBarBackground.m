@interface UIBarBackground
@end

@implementation UIBarBackground

uint64_t __40___UIBarBackground_transition_toLayout___block_invoke(uint64_t a1, int a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = 40;
  }

  return [*(a1 + 32) setLayout:*(a1 + v2)];
}

uint64_t __54___UIBarBackground_transitionBackgroundViewsAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) prepareBackgroundViews];
  [*(a1 + 32) updateBackground];
  v2 = *(a1 + 32);

  return [v2 cleanupBackgroundViews];
}

@end