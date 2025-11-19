@interface UIEventDeferringManagerIsAvailableForScene
@end

@implementation UIEventDeferringManagerIsAvailableForScene

uint64_t ___UIEventDeferringManagerIsAvailableForScene_block_invoke()
{
  result = _UIEventDeferringManagerIsAvailableForProcess();
  _UIEventDeferringManagerIsAvailableForScene_allowForProcess = result;
  return result;
}

@end