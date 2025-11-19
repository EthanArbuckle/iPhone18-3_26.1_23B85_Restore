@interface UITextChoiceAccelerationBubble
@end

@implementation UITextChoiceAccelerationBubble

uint64_t __56___UITextChoiceAccelerationBubble_updateViewForOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidate];
  v5 = [v4 input];
  v6 = [v5 isEqualToString:v3];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) replacement];
    v9 = [v8 revertText];
    v10 = [v9 isEqualToString:v3];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [v8 alternativeRevertTexts];
      v7 = [v11 containsObject:v3];
    }
  }

  return v7;
}

uint64_t __63___UITextChoiceAccelerationBubble_removeAnimated_withDuration___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) reset];
  *(*(a1 + 32) + 458) = 0;
  return result;
}

@end