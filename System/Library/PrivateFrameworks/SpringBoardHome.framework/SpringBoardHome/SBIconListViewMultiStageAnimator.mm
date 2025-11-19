@interface SBIconListViewMultiStageAnimator
- (SBIconListViewMultiStageAnimator)init;
- (void)iconListView:(id)a3 wantsAnimatedLayoutForIconView:(id)a4 withParameters:(SBIconListLayoutAnimationParameters *)a5 alongsideAnimationBlock:(id)a6;
@end

@implementation SBIconListViewMultiStageAnimator

- (SBIconListViewMultiStageAnimator)init
{
  v3.receiver = self;
  v3.super_class = SBIconListViewMultiStageAnimator;
  result = [(SBIconListViewMultiStageAnimator *)&v3 init];
  if (result)
  {
    result->_iconInitialCenter = vdupq_n_s64(0xC0C3880000000000);
  }

  return result;
}

- (void)iconListView:(id)a3 wantsAnimatedLayoutForIconView:(id)a4 withParameters:(SBIconListLayoutAnimationParameters *)a5 alongsideAnimationBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5->var5)
  {
    v13 = 0.3;
  }

  else
  {
    v13 = 0.15;
  }

  v14 = MEMORY[0x1E69DD250];
  var7 = a5->var7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v22[3] = &unk_1E8090DC8;
  v16 = *&a5->var2.continuousCornerRadius;
  v28 = *&a5->var2.size.height;
  v29 = v16;
  v17 = *&a5->var5;
  var4 = a5->var4;
  v31 = v17;
  v18 = *&a5->var1;
  var0 = a5->var0;
  v27 = v18;
  v22[4] = self;
  v23 = v11;
  v24 = v10;
  v25 = v12;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  [v14 animateWithDuration:var7 delay:v22 options:0 animations:0.3 completion:v13];
}

void __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v21.minimum;
  maximum = v21.maximum;
  preferred = v21.preferred;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2;
  v12[3] = &unk_1E8090DC8;
  *&v21.maximum = *(a1 + 112);
  v17 = *(a1 + 96);
  v18 = *&v21.maximum;
  *&v21.maximum = *(a1 + 144);
  v19 = *(a1 + 128);
  v20 = *&v21.maximum;
  *&v21.maximum = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = *&v21.maximum;
  v11 = *(a1 + 32);
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  *&v9 = minimum;
  *&v10 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v12 animations:{*&v9, COERCE_DOUBLE(__PAIR64__(DWORD1(v11), LODWORD(maximum))), v10}];
}

uint64_t __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v2 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3;
    v24[3] = &unk_1E8090DA0;
    v3 = *(a1 + 112);
    v28 = *(a1 + 96);
    v29 = v3;
    v4 = *(a1 + 144);
    v30 = *(a1 + 128);
    v31 = v4;
    v5 = *(a1 + 80);
    v26 = *(a1 + 64);
    v27 = v5;
    v6 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v6;
    [v2 performWithoutAnimation:v24];
    [*(a1 + 40) setAlpha:1.0];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 112);
    v20 = *(a1 + 96);
    v21 = v9;
    v10 = *(a1 + 144);
    v22 = *(a1 + 128);
    v23 = v10;
    v11 = *(a1 + 80);
    v18 = *(a1 + 64);
    v19 = v11;
    [v7 performDefaultAnimatedLayoutUpdateForIconView:v8 withParameters:&v18];
  }

  else
  {
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 112);
    v20 = *(a1 + 96);
    v21 = v14;
    v15 = *(a1 + 144);
    v22 = *(a1 + 128);
    v23 = v15;
    v16 = *(a1 + 80);
    v18 = *(a1 + 64);
    v19 = v16;
    [v12 performDefaultAnimatedLayoutUpdateForIconView:v13 withParameters:&v18];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __119__SBIconListViewMultiStageAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) <= -10000.0)
  {
    v3 = *(a1 + 56);
    *(v2 + 8) = *(a1 + 48);
    *(v2 + 16) = v3;
  }

  [*(a1 + 40) setCenter:?];
  [*(a1 + 40) setIconContentScale:*(a1 + 64)];
  result = [*(a1 + 40) isDropping];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);

    return [v5 setAlpha:0.0];
  }

  return result;
}

@end