@interface UIFocusItemFrameReporter
@end

@implementation UIFocusItemFrameReporter

void __58___UIFocusItemFrameReporter__scheduleRepeatingFrameUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFocusFrameForCurrentlyFocusedItem];
}

@end