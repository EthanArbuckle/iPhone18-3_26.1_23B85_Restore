@interface UIDragInteractionDriver
@end

@implementation UIDragInteractionDriver

uint64_t *__52___UIDragInteractionDriver_didTransitionToPreparing__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    return [*(a1 + 32) cancel];
  }

  result = (v2 + 8);
  if (*(v2 + 8) == 3)
  {
    return _UIDragInteractionDriverStateMachineHandleEvent(result, v2, 6);
  }

  return result;
}

@end