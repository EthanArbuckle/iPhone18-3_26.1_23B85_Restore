@interface UIEventDeferringBehavioriOSWantsSystemKeyCommandOverlayRules
@end

@implementation UIEventDeferringBehavioriOSWantsSystemKeyCommandOverlayRules

uint64_t ___UIEventDeferringBehavioriOSWantsSystemKeyCommandOverlayRules_block_invoke()
{
  if (_UIApplicationProcessIsSpotlight())
  {
    result = 1;
  }

  else
  {
    result = _UIApplicationProcessIsOverlayUI();
  }

  _MergedGlobals_1288 = result;
  return result;
}

@end