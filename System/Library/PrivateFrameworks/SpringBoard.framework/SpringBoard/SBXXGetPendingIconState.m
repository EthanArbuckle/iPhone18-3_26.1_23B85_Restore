@interface SBXXGetPendingIconState
@end

@implementation SBXXGetPendingIconState

void ___SBXXGetPendingIconState_block_invoke(uint64_t a1)
{
  v6 = serverIconController();
  v2 = [v6 iconModel];
  v3 = [v2 exportPendingState:*(a1 + 40) != 0 includeMissingIcons:1];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end