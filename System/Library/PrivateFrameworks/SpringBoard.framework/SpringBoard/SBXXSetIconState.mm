@interface SBXXSetIconState
@end

@implementation SBXXSetIconState

void ___SBXXSetIconState_block_invoke(uint64_t a1)
{
  v3 = serverIconController();
  if ([v3 importIconState:*(a1 + 32)])
  {
    v2 = 0;
  }

  else
  {
    v2 = 5;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

@end