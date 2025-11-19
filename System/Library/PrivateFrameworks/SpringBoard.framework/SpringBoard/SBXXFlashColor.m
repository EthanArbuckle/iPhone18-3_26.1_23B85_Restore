@interface SBXXFlashColor
@end

@implementation SBXXFlashColor

void ___SBXXFlashColor_block_invoke(uint64_t a1)
{
  v2 = +[SBScreenFlash mainScreenFlasher];
  [v2 flashColor:*(a1 + 32) withCompletion:0];
}

@end