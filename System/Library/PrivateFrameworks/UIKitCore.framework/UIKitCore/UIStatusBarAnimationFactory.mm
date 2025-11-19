@interface UIStatusBarAnimationFactory
@end

@implementation UIStatusBarAnimationFactory

uint64_t __43___UIStatusBarAnimationFactory_noAnimation__block_invoke()
{
  v0 = [_UIStatusBarAnimation animationWithBlock:&__block_literal_global_25_7];
  v1 = _MergedGlobals_1286;
  _MergedGlobals_1286 = v0;

  v2 = _MergedGlobals_1286;

  return [v2 setIdentifier:@"noAnimation"];
}

void __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = a4;
  v11 = [v8 identifier];
  v12 = [v9 objectForKeyedSubscript:v11];

  if ([v7 type] == 2)
  {
    [v12 frame];
    [v8 setAbsoluteFrame:?];
  }

  else if ([v12 itemAppearing])
  {
    [v8 setAlpha:0.0];
    v13 = *(a1 + 56);
    v25[0] = *(a1 + 40);
    v25[1] = v13;
    v25[2] = *(a1 + 72);
    [v8 setTransform:v25];
    [v12 setOptions:0];
  }

  v14 = *(a1 + 88);
  v15 = [v12 options];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_2;
  v19[3] = &unk_1E7121D60;
  v20 = v8;
  v21 = v7;
  v16 = *(a1 + 56);
  v22 = *(a1 + 40);
  v23 = v16;
  v24 = *(a1 + 72);
  v17 = v7;
  v18 = v8;
  [UIView animateWithDuration:v15 delay:v19 options:v10 animations:v14 completion:0.0];
}

uint64_t __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) type];
  v3 = 0.0;
  if (v2 == 1)
  {
    v3 = 1.0;
  }

  [*(a1 + 32) setAlpha:v3];
  v4 = [*(a1 + 40) type];
  v5 = (a1 + 48);
  if (v4 == 1)
  {
    v5 = MEMORY[0x1E695EFD0];
  }

  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  return [*(a1 + 32) setTransform:v8];
}

BOOL __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(_UIStatusBarFadeAnimationParameters);
  [v6 absoluteFrame];
  [(_UIStatusBarFadeAnimationParameters *)v7 setFrame:?];
  v8 = [v5 type];
  if (v8 != 3)
  {
    if ([v5 type] == 2)
    {
      [v6 setFloating:1];
    }

    else
    {
      [v6 alpha];
      if (v9 == 1.0)
      {
        [(_UIStatusBarFadeAnimationParameters *)v7 setItemAppearing:1];
LABEL_7:
        v10 = *(*(*(a1 + 32) + 8) + 40);
        v11 = [v6 identifier];
        [v10 setObject:v7 forKeyedSubscript:v11];

        goto LABEL_8;
      }
    }

    [(_UIStatusBarFadeAnimationParameters *)v7 setOptions:4];
    goto LABEL_7;
  }

LABEL_8:

  return v8 != 3;
}

void __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_2;
  v9[3] = &unk_1E70F32F0;
  v10 = v6;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v6;
  [UIView animateKeyframesWithDuration:3072 delay:v9 options:a4 animations:v7 completion:0.0];
}

void __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_3;
  v4[3] = &unk_1E70F32F0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.333];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_4;
  v2[3] = &unk_1E70F3590;
  v3 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.333 animations:0.664];
}

uint64_t __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

@end