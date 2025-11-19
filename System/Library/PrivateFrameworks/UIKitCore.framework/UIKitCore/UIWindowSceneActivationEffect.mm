@interface UIWindowSceneActivationEffect
@end

@implementation UIWindowSceneActivationEffect

void __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  v2 = [*(a1 + 32) platterView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __49___UIWindowSceneActivationEffect_advanceToScale___block_invoke_2(uint64_t a1)
{
  v2 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v2 pinchPlatterMaxShadowIntensity];
  v4 = v3;
  v5 = [*(a1 + 32) platterView];
  [v5 setShadowAlpha:v4];

  v6 = [*(a1 + 32) platterView];
  [v6 setBackgroundAlpha:1.0];
}

uint64_t __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (!result)
  {
    v3 = [*(a1 + 32) platterContainer];
    [v3 removeFromSuperview];

    v4 = *(a1 + 32);

    return [v4 _performAllCompletionBlocks];
  }

  return result;
}

uint64_t __59___UIWindowSceneActivationEffect_endExpanded_withVelocity___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
}

@end