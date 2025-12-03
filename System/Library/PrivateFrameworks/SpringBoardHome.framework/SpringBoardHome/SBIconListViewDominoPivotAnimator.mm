@interface SBIconListViewDominoPivotAnimator
- (SBIconListViewDominoPivotAnimator)initWithPivotIcon:(id)icon;
- (SBIconListViewDominoPivotAnimatorDelegate)delegate;
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
@end

@implementation SBIconListViewDominoPivotAnimator

- (SBIconListViewDominoPivotAnimator)initWithPivotIcon:(id)icon
{
  iconCopy = icon;
  v12.receiver = self;
  v12.super_class = SBIconListViewDominoPivotAnimator;
  v6 = [(SBIconListViewDominoPivotAnimator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pivotIcon, icon);
    v7->_pivotIconIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v8 iconEditingSettings];
    iconEditingSettings = v7->_iconEditingSettings;
    v7->_iconEditingSettings = iconEditingSettings;
  }

  return v7;
}

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  viewCopy = view;
  iconViewCopy = iconView;
  blockCopy = block;
  model = [viewCopy model];
  icon = [iconViewCopy icon];
  v15 = [model indexForIcon:icon];
  pivotIconIndex = [(SBIconListViewDominoPivotAnimator *)self pivotIconIndex];
  if (pivotIconIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    pivotIcon = [(SBIconListViewDominoPivotAnimator *)self pivotIcon];
    if (pivotIcon)
    {
      pivotIconIndex = [model indexForIcon:pivotIcon];
    }

    else
    {
      pivotIconIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(SBIconListViewDominoPivotAnimator *)self setPivotIconIndex:pivotIconIndex];
  }

  delegate = [(SBIconListViewDominoPivotAnimator *)self delegate];
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDuration];
  v20 = v19;
  [(SBHIconEditingSettings *)self->_iconEditingSettings defaultSpringDampingRatio];
  v22 = v21 + -0.03;
  v23 = vabdd_f64(v15, pivotIconIndex) * 0.05;
  v24 = MEMORY[0x1E69DD250];
  var7 = parameters->var7;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v26 = *&parameters->var2.continuousCornerRadius;
  v41 = *&parameters->var2.size.height;
  v42 = v26;
  v27 = *&parameters->var5;
  var4 = parameters->var4;
  v44 = v27;
  v28 = *&parameters->var1;
  var0 = parameters->var0;
  v33[2] = __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v33[3] = &unk_1E80895D8;
  v40 = v28;
  v34 = iconViewCopy;
  v35 = viewCopy;
  selfCopy = self;
  v38 = blockCopy;
  v36 = delegate;
  v29 = delegate;
  v30 = blockCopy;
  v31 = viewCopy;
  v32 = iconViewCopy;
  [v24 animateWithDuration:var7 delay:v33 usingSpringWithDamping:0 initialSpringVelocity:v20 options:v23 animations:v22 completion:0.0];
}

void __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v21 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v21.minimum;
  maximum = v21.maximum;
  preferred = v21.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2;
  v11[3] = &unk_1E80895D8;
  *&v21.minimum = *(a1 + 120);
  v17 = *(a1 + 104);
  v18 = *&v21.minimum;
  v19 = *(a1 + 136);
  v20 = *(a1 + 152);
  *&v21.minimum = *(a1 + 88);
  v15 = *(a1 + 72);
  v16 = *&v21.minimum;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = *(a1 + 64);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = *(a1 + 56);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114131 updateReason:v11 animations:{*&v8, *&v9, v10}];
}

uint64_t __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3;
    v11[3] = &unk_1E8089270;
    v12 = *(a1 + 32);
    v15 = *(a1 + 104);
    v16 = *(a1 + 120);
    v17 = *(a1 + 136);
    v18 = *(a1 + 152);
    v13 = *(a1 + 72);
    v14 = *(a1 + 88);
    [v2 performWithoutAnimation:v11];
    [*(a1 + 32) setAlpha:1.0];
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 120);
    v10[2] = *(a1 + 104);
    v10[3] = v5;
    v6 = *(a1 + 152);
    v10[4] = *(a1 + 136);
    v10[5] = v6;
    v7 = *(a1 + 88);
    v10[0] = *(a1 + 72);
    v10[1] = v7;
    [v3 performDefaultAnimatedLayoutUpdateForIconView:v4 withParameters:v10];
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))();
  }

  return [*(a1 + 48) dominoPivotAnimator:*(a1 + 56) didLayOutIconView:*(a1 + 32)];
}

uint64_t __120__SBIconListViewDominoPivotAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke_3(uint64_t a1)
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

- (SBIconListViewDominoPivotAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end