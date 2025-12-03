@interface SBIconListViewDefaultAnimator
- (SBIconListViewDefaultAnimator)init;
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
@end

@implementation SBIconListViewDefaultAnimator

- (SBIconListViewDefaultAnimator)init
{
  v7.receiver = self;
  v7.super_class = SBIconListViewDefaultAnimator;
  v2 = [(SBIconListViewDefaultAnimator *)&v7 init];
  if (v2)
  {
    v3 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v3 iconEditingSettings];
    iconEditingSettings = v2->_iconEditingSettings;
    v2->_iconEditingSettings = iconEditingSettings;
  }

  return v2;
}

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  viewCopy = view;
  iconViewCopy = iconView;
  blockCopy = block;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDuration];
  v14 = v13;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v16 = v15;
  v17 = MEMORY[0x1E69DD250];
  var7 = parameters->var7;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v19 = *&parameters->var2.continuousCornerRadius;
  v31 = *&parameters->var2.size.height;
  v32 = v19;
  v20 = *&parameters->var5;
  var4 = parameters->var4;
  v34 = v20;
  v21 = *&parameters->var1;
  var0 = parameters->var0;
  v30 = v21;
  v25[2] = __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v25[3] = &unk_1E808C7A0;
  v26 = iconViewCopy;
  v27 = viewCopy;
  v28 = blockCopy;
  v22 = blockCopy;
  v23 = viewCopy;
  v24 = iconViewCopy;
  [v17 animateWithDuration:var7 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:v14 options:0.0 animations:v16 completion:0.0];
}

void __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v19 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v19.minimum;
  maximum = v19.maximum;
  preferred = v19.preferred;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2;
  v9[3] = &unk_1E808C7A0;
  *&v19.minimum = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = *&v19.minimum;
  *&v19.minimum = *(a1 + 136);
  v17 = *(a1 + 120);
  v18 = *&v19.minimum;
  *&v19.minimum = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = *&v19.minimum;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v9 animations:{v6, v7, v8}];
}

uint64_t __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3;
    v10[3] = &unk_1E8089270;
    v11 = *(a1 + 32);
    v14 = *(a1 + 88);
    v15 = *(a1 + 104);
    v16 = *(a1 + 120);
    v17 = *(a1 + 136);
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    [v2 performWithoutAnimation:v10];
    [*(a1 + 32) setAlpha:1.0];
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 104);
    v9[2] = *(a1 + 88);
    v9[3] = v5;
    v6 = *(a1 + 136);
    v9[4] = *(a1 + 120);
    v9[5] = v6;
    v7 = *(a1 + 72);
    v9[0] = *(a1 + 56);
    v9[1] = v7;
    [v3 performDefaultAnimatedLayoutUpdateForIconView:v4 withParameters:v9];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __116__SBIconListViewDefaultAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) setIconContentScale:*(a1 + 56)];
  result = [*(a1 + 32) isDropping];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setAlpha:0.0];
  }

  return result;
}

@end