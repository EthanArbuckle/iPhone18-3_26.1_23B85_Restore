@interface UIStatusBarCellularSignalView
@end

@implementation UIStatusBarCellularSignalView

uint64_t __58___UIStatusBarCellularSignalView__updateCycleAnimationNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) signalMode];
  if (result == 1)
  {
    [*(a1 + 32) setCycleAnimation:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 480);

    return [v3 start];
  }

  return result;
}

uint64_t __50___UIStatusBarCellularSignalView__updateFromMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) signalMode];
  if (result != 1)
  {
    v3 = *(a1 + 32);

    return [v3 setNeedsLayout];
  }

  return result;
}

@end