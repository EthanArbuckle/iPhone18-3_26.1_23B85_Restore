@interface UIPopoverLegacyChromeView
@end

@implementation UIPopoverLegacyChromeView

uint64_t __45___UIPopoverLegacyChromeView_didMoveToWindow__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadNecessaryViews];
  result = [*(a1 + 32) isPinned];
  *(*(a1 + 32) + 546) = result;
  return result;
}

@end