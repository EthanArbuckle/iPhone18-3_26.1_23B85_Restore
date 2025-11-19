@interface STUIStatusBarAnimationFactory
+ (id)fadeAnimationWithDuration:(double)a3 scale:(double)a4 offset:(UIOffset)a5;
+ (id)noAnimation;
+ (id)pulseAnimationWithDuration:(double)a3 scale:(double)a4;
@end

@implementation STUIStatusBarAnimationFactory

+ (id)noAnimation
{
  if (qword_280C1E8E0 != -1)
  {
    dispatch_once(&qword_280C1E8E0, &__block_literal_global_16);
  }

  v3 = _MergedGlobals_59;

  return v3;
}

uint64_t __44__STUIStatusBarAnimationFactory_noAnimation__block_invoke()
{
  v0 = [STUIStatusBarAnimation animationWithBlock:&__block_literal_global_25];
  v1 = _MergedGlobals_59;
  _MergedGlobals_59 = v0;

  v2 = _MergedGlobals_59;

  return [v2 setIdentifier:@"noAnimation"];
}

+ (id)fadeAnimationWithDuration:(double)a3 scale:(double)a4 offset:(UIOffset)a5
{
  vertical = a5.vertical;
  horizontal = a5.horizontal;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__6;
  v23[4] = __Block_byref_object_dispose__6;
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v9 = *MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v22.a = *MEMORY[0x277CBF2C0];
  *&v22.c = v10;
  v11 = *(MEMORY[0x277CBF2C0] + 32);
  *&v22.tx = v11;
  if (horizontal != *MEMORY[0x277D76DA8] || vertical != *(MEMORY[0x277D76DA8] + 8))
  {
    *&v21.a = v9;
    *&v21.c = v10;
    *&v21.tx = v11;
    CGAffineTransformTranslate(&v22, &v21, horizontal, vertical);
  }

  if (a4 != 1.0)
  {
    v20 = v22;
    CGAffineTransformScale(&v21, &v20, a4, a4);
    v22 = v21;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = v22;
  v17[2] = __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke;
  v17[3] = &unk_279D397B0;
  v17[4] = v23;
  v19 = a3;
  v13 = [STUIStatusBarAnimation animationWithBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_3;
  v16[3] = &unk_279D38588;
  v16[4] = v23;
  [v13 setPrepareBlock:v16];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"fadeAnimation[%.2f]", *&a3];
  [v13 setIdentifier:v14];

  _Block_object_dispose(v23, 8);

  return v13;
}

void __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
    v26[0] = *(a1 + 40);
    v26[1] = v13;
    v26[2] = *(a1 + 72);
    [v8 setTransform:v26];
    [v12 setOptions:0];
  }

  v14 = MEMORY[0x277D75D18];
  v15 = *(a1 + 88);
  v16 = [v12 options];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_2;
  v20[3] = &unk_279D39788;
  v21 = v8;
  v22 = v7;
  v17 = *(a1 + 56);
  v23 = *(a1 + 40);
  v24 = v17;
  v25 = *(a1 + 72);
  v18 = v7;
  v19 = v8;
  [v14 animateWithDuration:v16 delay:v20 options:v10 animations:v15 completion:0.0];
}

uint64_t __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_2(uint64_t a1)
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
    v5 = MEMORY[0x277CBF2C0];
  }

  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  return [*(a1 + 32) setTransform:v8];
}

BOOL __72__STUIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(STUIStatusBarFadeAnimationParameters);
  [v6 absoluteFrame];
  [(STUIStatusBarFadeAnimationParameters *)v7 setFrame:?];
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
        [(STUIStatusBarFadeAnimationParameters *)v7 setItemAppearing:1];
LABEL_7:
        v10 = *(*(*(a1 + 32) + 8) + 40);
        v11 = [v6 identifier];
        [v10 setObject:v7 forKeyedSubscript:v11];

        goto LABEL_8;
      }
    }

    [(STUIStatusBarFadeAnimationParameters *)v7 setOptions:4];
    goto LABEL_7;
  }

LABEL_8:

  return v8 != 3;
}

+ (id)pulseAnimationWithDuration:(double)a3 scale:(double)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke;
  v6[3] = &__block_descriptor_48_e71_v32__0__STUIStatusBarAnimation_8__STUIStatusBarDisplayItem_16___v__B_24l;
  *&v6[4] = a3;
  *&v6[5] = a4;
  v4 = [STUIStatusBarAnimation animationWithBlock:v6];

  return v4;
}

void __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_2;
  v10[3] = &unk_279D38628;
  v11 = v6;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v6;
  [v7 animateKeyframesWithDuration:3072 delay:v10 options:a4 animations:v8 completion:0.0];
}

void __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_3;
  v6[3] = &unk_279D38628;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.333];
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_4;
  v4[3] = &unk_279D37F00;
  v5 = *(a1 + 32);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.333 animations:0.664];
}

uint64_t __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __66__STUIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

@end