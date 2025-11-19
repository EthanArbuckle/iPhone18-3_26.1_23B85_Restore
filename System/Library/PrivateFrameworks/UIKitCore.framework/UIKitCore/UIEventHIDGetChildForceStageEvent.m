@interface UIEventHIDGetChildForceStageEvent
@end

@implementation UIEventHIDGetChildForceStageEvent

uint64_t ___UIEventHIDGetChildForceStageEvent_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

@end