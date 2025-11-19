@interface CALayer
@end

@implementation CALayer

void __51__CALayer_Utilities__vk_autoFadeOutShapePointLayer__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.5];
  [*(a1 + 32) setOpacity:0.0];
  v2 = MEMORY[0x1E6979518];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CALayer_Utilities__vk_autoFadeOutShapePointLayer__block_invoke_2;
  v3[3] = &unk_1E7BE4208;
  v4 = *(a1 + 32);
  [v2 setCompletionBlock:v3];
  [MEMORY[0x1E6979518] commit];
}

void __51__CALayer_Utilities__vk_autoFadeOutShapePointLayer__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __51__CALayer_Utilities__vk_autoFadeOutShapePointLayer__block_invoke_3;
  v1[3] = &unk_1E7BE4208;
  v2 = *(a1 + 32);
  vk_dispatchMainAfterDelay(v1, 0.5);
}

@end