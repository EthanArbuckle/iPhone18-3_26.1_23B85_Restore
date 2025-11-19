@interface UIStatusBarCellularItem
@end

@implementation UIStatusBarCellularItem

uint64_t __60___UIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setMarqueeRunning:1];
  }

  return result;
}

@end