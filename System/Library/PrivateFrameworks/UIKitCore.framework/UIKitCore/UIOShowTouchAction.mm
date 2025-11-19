@interface UIOShowTouchAction
@end

@implementation UIOShowTouchAction

uint64_t __63___UIOShowTouchAction_TestingOnly_performActionFromConnection___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 40) setAlpha:1.0];
}

@end