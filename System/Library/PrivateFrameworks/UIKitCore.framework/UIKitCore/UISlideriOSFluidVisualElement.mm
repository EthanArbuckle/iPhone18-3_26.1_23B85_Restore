@interface UISlideriOSFluidVisualElement
@end

@implementation UISlideriOSFluidVisualElement

void __51___UISlideriOSFluidVisualElement__setupInteraction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(a1 + 32) + 560);
  [v3 trackBounds];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v9 = (*(a1 + 32) + 592);
  if (v3)
  {
    [v3 trackTransform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v9[1] = v17;
  v9[2] = v18;
  *v9 = v16;
  [v3 barFrame];
  *(*(a1 + 32) + 552) = CGRectGetMaxX(v19);
  v10 = [v3 type];
  v11 = (v10 >> 1) & 1;
  if ((v10 & 4) != 0)
  {
    v11 = 2;
  }

  *(*(a1 + 32) + 640) = v11;
  v12 = [v3 type];
  if (v12 == ([v3 type] & 3))
  {
    if ([v3 interactionState])
    {
      v13 = [*(a1 + 32) slider];
      v14 = [v13 isContinuous];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 32);
  [v15[68] value];
  [v15 _updateModelValue:v14 sendAction:?];
  [*(a1 + 32) _layoutSubviewsForBoundsChange:0];
}

@end