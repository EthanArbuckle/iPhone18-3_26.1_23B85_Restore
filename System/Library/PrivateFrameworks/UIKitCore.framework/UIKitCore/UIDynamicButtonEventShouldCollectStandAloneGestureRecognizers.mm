@interface UIDynamicButtonEventShouldCollectStandAloneGestureRecognizers
@end

@implementation UIDynamicButtonEventShouldCollectStandAloneGestureRecognizers

uint64_t ___UIDynamicButtonEventShouldCollectStandAloneGestureRecognizers_block_invoke()
{
  result = [UIApp isFrontBoard];
  _MergedGlobals_23_8 = result;
  return result;
}

@end