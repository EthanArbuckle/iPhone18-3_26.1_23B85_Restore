@interface UIBarsTwoPartCrossfadeTransitionProgress
@end

@implementation UIBarsTwoPartCrossfadeTransitionProgress

void ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke_2;
  v5[3] = &unk_1E70F4178;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.3];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke_3;
  v2[3] = &unk_1E70F4178;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.7 animations:0.3];
}

uint64_t ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke_2(uint64_t result)
{
  if (*(result + 40) < 0.3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t ___UIBarsTwoPartCrossfadeTransitionProgress_block_invoke_3(uint64_t result)
{
  if (*(result + 40) >= 0.3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end