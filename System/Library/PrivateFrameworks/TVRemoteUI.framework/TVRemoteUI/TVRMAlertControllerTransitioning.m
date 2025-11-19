@interface TVRMAlertControllerTransitioning
@end

@implementation TVRMAlertControllerTransitioning

uint64_t __55___TVRMAlertControllerTransitioning_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  [*(*(a1 + 32) + 16) setAlpha:*(a1 + 88)];
  return [*(*(a1 + 32) + 24) setAlpha:*(a1 + 88)];
}

uint64_t __55___TVRMAlertControllerTransitioning_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v4 = [*(a1 + 40) viewForKey:*MEMORY[0x277D77238]];
    [v4 removeFromSuperview];
  }

  v5 = *(a1 + 40);

  return [v5 completeTransition:a2];
}

@end