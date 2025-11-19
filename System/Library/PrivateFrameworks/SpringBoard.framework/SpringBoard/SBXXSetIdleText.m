@interface SBXXSetIdleText
@end

@implementation SBXXSetIdleText

void ___SBXXSetIdleText_block_invoke(uint64_t a1)
{
  v3 = serverIconController();
  v2 = [v3 iconManager];
  [v2 setIdleModeText:*(a1 + 32)];
}

@end