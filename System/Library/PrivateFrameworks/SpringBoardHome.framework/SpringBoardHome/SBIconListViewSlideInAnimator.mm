@interface SBIconListViewSlideInAnimator
- (void)iconListView:(id)a3 wantsAnimatedLayoutForIconView:(id)a4 withParameters:(SBIconListLayoutAnimationParameters *)a5 alongsideAnimationBlock:(id)a6;
@end

@implementation SBIconListViewSlideInAnimator

- (void)iconListView:(id)a3 wantsAnimatedLayoutForIconView:(id)a4 withParameters:(SBIconListLayoutAnimationParameters *)a5 alongsideAnimationBlock:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  [v11 bounds];
  Width = CGRectGetWidth(v33);
  [v11 bounds];
  Height = CGRectGetHeight(v34);
  v14 = [v11 userInterfaceLayoutDirection];
  v15 = [v11 iconInsertionAnimationOriginatingEdge];

  v16 = -Width;
  if (v14 != 1)
  {
    v16 = Width;
  }

  if (v15 == 1)
  {
    v17 = Height;
  }

  else
  {
    v17 = 0.0;
  }

  if (v15 == 1)
  {
    v16 = 0.0;
  }

  [v9 setCenter:{a5->var0.x + v16, a5->var0.y + v17}];
  v18 = MEMORY[0x1E69DD250];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __116__SBIconListViewSlideInAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v24[3] = &unk_1E808BF90;
  v19 = *&a5->var2.continuousCornerRadius;
  v29 = *&a5->var2.size.height;
  v30 = v19;
  v20 = *&a5->var5;
  var4 = a5->var4;
  v32 = v20;
  v21 = *&a5->var1;
  var0 = a5->var0;
  v28 = v21;
  v25 = v9;
  v26 = v10;
  v22 = v10;
  v23 = v9;
  [v18 animateWithDuration:v24 animations:0.3];
}

uint64_t __116__SBIconListViewSlideInAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end